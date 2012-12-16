define_stage :intro do
  curtain_up do
    create_actor :label, x: 250, y: 150, text: "MOAR AXE", font_name: 'doctor_soos_bold.ttf', font_size: 200, color: Color::YELLOW
    input_manager.reg :down do 
      fire :next_stage
    end
  end

end
