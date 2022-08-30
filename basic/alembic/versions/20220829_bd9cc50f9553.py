"""add config vars

Revision ID: bd9cc50f9553
Revises: 95215e989cf9
Create Date: 2022-08-29 06:45:37.207890

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = 'bd9cc50f9553'
down_revision = '95215e989cf9'
branch_labels = None
depends_on = None

def upgrade():
    op.create_table('cfg_var_type',
    sa.Column('id', sa.Integer(), nullable=False),
    sa.Column('name', sa.Text(), nullable=True),
    sa.PrimaryKeyConstraint('id', name=op.f('cfg_var'))
    )

    op.execute("INSERT INTO cfg_var_type (name) VALUES ('Bool')")

    op.create_table('cfg_var',
    sa.Column('id', sa.Integer(), nullable=False),
    sa.Column('name', sa.Text(), nullable=True),
    sa.Column('value', sa.Text(), nullable=True),
    sa.Column('var_type_id', sa.Integer(), sa.ForeignKey('cfg_var_type.id', ondelete="CASCADE"), nullable=False),
    sa.PrimaryKeyConstraint('id', name=op.f('cfg_var'))
    )
    # op.create_index('cfg_var_index', 'cfg_var', ['name'], unique=True, mysql_length=255)

    op.execute("INSERT INTO cfg_var (name, value, var_type_id) VALUES ('test', 'True', '1')")

def downgrade():
    op.drop_table('cfg_var_type')

    # op.drop_index('cfg_var_index', table_name='cfg_var', mysql_length=255)
    op.drop_table('cfg_var')
