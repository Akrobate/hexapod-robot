/**
 * servoMotor
 * @name servoMotor
 * @description Servo motor with arm assembly
 * @type component
 */
module servoMotor(angle = 0) {

    x_size = 11.8;
    y_size = 22.2;

    // translating to center the servo motor
    translate([-x_size / 2, - y_size + (x_size / 2), 0]) {
        color("DodgerBlue")
            import("../assets/sg90/SG90_v7.stl");

        translate([5.9, 16.30, 32.2])
            rotate([0, 180, 180])
                rotate([0, 0, angle])
                    color("Gainsboro")
                        import("../assets/sg90/SG90_arm_v2.stl");
    }
}


/**
 * @png
 * @colorscheme BeforeDawn
 */
servoMotor();
