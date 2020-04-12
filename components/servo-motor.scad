servoMotor();

// Servo model sizes:
// 11.8
// 22.2


module servoMotor(angle = 0) {
    // translating to center the servo motor
    translate([-11.8 / 2, - 22.2 + (11.8 / 2), 0]) {
        color("DodgerBlue")
            import("../assets/sg90/SG90_v7.stl");
        
        translate([5.9, 16.30, 32.2])
        rotate([0, 180, 180])
        rotate([0, 0, angle])
        color("Gainsboro")
            import("../assets/sg90/SG90_arm_v2.stl");
    }
}