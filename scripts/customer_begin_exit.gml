
// 1. Update God Customer variables
with(o_god)
{

    god_despawn_customer(other.id);

}

// end. Destroy the customer
instance_destroy();
