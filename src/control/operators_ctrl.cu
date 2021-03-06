#include "operators_ctrl.hpp"

#include "blending_env.hpp"
#include "constants.hpp"
#include "blending_env.hpp"
#include "n_ary.hpp"
#include "n_ary_constant_interface.hpp"

void Operators_ctrl::update_bulge(){
    Blending_env::update_3D_bulge();
}

// -----------------------------------------------------------------------------

void Operators_ctrl::update_displayed_operator_texture()
{
}

// -----------------------------------------------------------------------------

void Operators_ctrl::set_global_controller(const IBL::Ctrl_setup& shape)
{
    Blending_env::set_global_ctrl_shape(shape);
}

// -----------------------------------------------------------------------------

void Operators_ctrl::set_controller(int ctrl_idx, const IBL::Ctrl_setup& shape)
{
    Blending_env::update_controller(ctrl_idx, shape);
}

// -----------------------------------------------------------------------------

void Operators_ctrl::print_controller()
{

    // DEPRECATED
    assert(false);
//    std::cout << "F0: " << Constants::get(Constants::F0) << std::endl;
//    std::cout << "F1: " << Constants::get(Constants::F1) << std::endl;
//    std::cout << "F2: " << Constants::get(Constants::F2) << std::endl;

//    std::cout << "B0: " << Constants::get(Constants::B0) << std::endl;
//    std::cout << "B1: " << Constants::get(Constants::B1) << std::endl;
//    std::cout << "B2: " << Constants::get(Constants::B2) << std::endl;

//    std::cout << "POW0: " << Constants::get(Constants::POW0) << std::endl;
//    std::cout << "POW1: " << Constants::get(Constants::POW1) << std::endl;
}

// -----------------------------------------------------------------------------

void Operators_ctrl::set_bulge_magnitude(float mag){
    Blending_env::set_bulge_magnitude(mag);
}

// -----------------------------------------------------------------------------

void Operators_ctrl::set_ricci_n(float N){
    Blending_env::set_ricci_n(N);
}

// -----------------------------------------------------------------------------

IBL::Ctrl_setup Operators_ctrl::get_global_controller()
{
    return Blending_env::get_global_ctrl_shape();
}

// -----------------------------------------------------------------------------

void Operators_ctrl::set_ricci_operator_n     ( float v ){ N_ary::set_RICCI_N(v); }
void Operators_ctrl::set_deform_operator_wA0A0( float v ){ N_ary::set_wA0A0(v);   }
void Operators_ctrl::set_deform_operator_wA0A1( float v ){ N_ary::set_wA0A1(v);   }
void Operators_ctrl::set_deform_operator_wA1A1( float v ){ N_ary::set_wA1A1(v);   }
void Operators_ctrl::set_deform_operator_wA1A0( float v ){ N_ary::set_wA1A0(v);   }
void Operators_ctrl::set_contact_a0_1         ( float v ){ N_ary::set_a0(v);      }
void Operators_ctrl::set_contact_w1           ( float v ){ N_ary::set_w0(v);      }
void Operators_ctrl::set_contact_a0_2         ( float v ){ N_ary::set_a1(v);      }
void Operators_ctrl::set_contact_w2           ( float v ){ N_ary::set_w1(v);      }
void Operators_ctrl::set_contact_gji          ( float v ){ N_ary::set_gji(v);     }
void Operators_ctrl::set_contact_gij          ( float v ){ N_ary::set_gij(v);     }

// -----------------------------------------------------------------------------
