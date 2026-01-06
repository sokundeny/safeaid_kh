import '../domain/entities/injury_type.dart';
import '../domain/entities/injury.dart';
import '../domain/entities/first_aid_step.dart';

final List<InjuryType> injuryTypes = [
  // Physical Injuries
  InjuryType(
    id: "type1",
    name: "Physical Injury",
    imagePath: "assets/images/physical.png",
    injuries: [
      Injury(
        id: "inj1",
        name: "Head Injury",
        description: "Injury affecting the head, scalp, skull, or brain.",
        imagePath: "assets/images/physical.png",
        subInjuries: [
          Injury(
            id: "inj1_1",
            name: "Concussion",
            description: "Temporary loss of brain function due to head trauma.",
            imagePath: "assets/images/concussion.png",
            steps: [
              FirstAidStep(
                stepNumber: 1,
                description: "Keep the person still and calm. Do not move them unless absolutely necessary.",
                imagePath: "assets/images/head_step1.png",
              ),
              FirstAidStep(
                stepNumber: 2,
                description: "Check for responsiveness, breathing, and pulse. Ask their name, location, and date.",
                imagePath: "assets/images/head_step2.png",
              ),
              FirstAidStep(
                stepNumber: 3,
                description: "Apply ice pack wrapped in cloth to reduce swelling. Never apply ice directly to skin.",
                imagePath: "assets/images/head_step3.png",
              ),
              FirstAidStep(
                stepNumber: 4,
                description: "Monitor for symptoms: confusion, vomiting, severe headache, or loss of consciousness.",
                imagePath: "assets/images/head_step4.png",
              ),
              FirstAidStep(
                stepNumber: 5,
                description: "Seek immediate medical attention. Do not give medication without doctor approval.",
                imagePath: "assets/images/head_step5.png",
              ),
            ],
          ),
          Injury(
            id: "inj1_2",
            name: "Scalp Wound",
            description: "Cut or laceration on the scalp that may bleed heavily.",
            imagePath: "assets/images/scalp_wound.png",
            steps: [
              FirstAidStep(
                stepNumber: 1,
                description: "Apply direct pressure with clean cloth or gauze to control bleeding.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 2,
                description: "Keep pressure for 10-15 minutes without lifting to check.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 3,
                description: "If bleeding doesn't stop, continue pressure and call emergency services.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 4,
                description: "Once bleeding stops, clean gently with water and cover with sterile bandage.",
                imagePath: "",
              ),
            ],
          ),
        ],
      ),

      Injury(
        id: "inj2",
        name: "Fracture",
        description: "Complete or partial break in a bone.",
        imagePath: "assets/images/fracture.png",
        subInjuries: [
          Injury(
            id: "inj2_1",
            name: "Arm Fracture",
            description: "Broken bone in the upper arm, forearm, wrist, or hand.",
            imagePath: "assets/images/fracture_arm.png",
            steps: [
              FirstAidStep(
                stepNumber: 1,
                description: "Do not try to straighten the arm. Keep it in the position found.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 2,
                description: "Immobilize using a padded splint or rolled newspaper. Tie above and below the fracture.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 3,
                description: "Support the arm with a triangular bandage sling tied around the neck.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 4,
                description: "Apply ice pack wrapped in cloth to reduce swelling. Elevate if possible.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 5,
                description: "Seek emergency medical care. Do not give food or drink.",
                imagePath: "",
              ),
            ],
          ),
          Injury(
            id: "inj2_2",
            name: "Leg Fracture",
            description: "Broken bone in the thigh, shin, ankle, or foot.",
            imagePath: "assets/images/fracture_leg.png",
            steps: [
              FirstAidStep(
                stepNumber: 1,
                description: "Call emergency services immediately. Do not attempt to move the person.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 2,
                description: "Immobilize the leg using padded splints on both sides extending beyond joints.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 3,
                description: "Place padding between the legs and tie both legs together if help is delayed.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 4,
                description: "Monitor for shock: pale skin, rapid pulse, confusion. Keep person warm.",
                imagePath: "",
              ),
            ],
          ),
          Injury(
            id: "inj2_3",
            name: "Collarbone Fracture",
            description: "Break in the clavicle, commonly from falls or direct impact.",
            imagePath: "assets/images/fracture_collarbone.png",
            steps: [
              FirstAidStep(
                stepNumber: 1,
                description: "Support the arm on the injured side with a sling.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 2,
                description: "Place padding between the arm and chest for comfort.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 3,
                description: "Secure the arm to the body with a broad bandage if needed.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 4,
                description: "Seek medical attention for proper diagnosis and treatment.",
                imagePath: "",
              ),
            ],
          ),
        ],
      ),

      Injury(
        id: "inj3",
        name: "Sprain & Strain",
        description: "Stretched or torn ligaments (sprain) or muscles/tendons (strain).",
        imagePath: "assets/images/sprain.png",
        subInjuries: [
          Injury(
            id: "inj3_1",
            name: "Ankle Sprain",
            description: "Twisted ankle causing ligament damage.",
            imagePath: "assets/images/ankle_sprain.png",
            steps: [
              FirstAidStep(
                stepNumber: 1,
                description: "Rest: Stop activity immediately and avoid putting weight on the ankle.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 2,
                description: "Ice: Apply ice pack for 15-20 minutes every 2-3 hours for first 48 hours.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 3,
                description: "Compression: Wrap with elastic bandage, not too tight. Check circulation regularly.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 4,
                description: "Elevation: Keep ankle elevated above heart level to reduce swelling.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 5,
                description: "Seek medical care if severe pain, inability to walk, or no improvement in 48 hours.",
                imagePath: "",
              ),
            ],
          ),
          Injury(
            id: "inj3_2",
            name: "Wrist Sprain",
            description: "Injury to wrist ligaments from fall or impact.",
            imagePath: "assets/images/wrist_sprain.png",
            steps: [
              FirstAidStep(
                stepNumber: 1,
                description: "Remove jewelry immediately before swelling begins.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 2,
                description: "Apply ice wrapped in towel for 15-20 minutes every few hours.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 3,
                description: "Wrap wrist with compression bandage, keeping fingers visible to monitor circulation.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 4,
                description: "Keep wrist elevated and avoid using it. Rest for 48-72 hours.",
                imagePath: "",
              ),
            ],
          ),
        ],
      ),

      Injury(
        id: "inj4",
        name: "Back & Spine Injury",
        description: "Injury to the vertebrae, spinal cord, or surrounding muscles.",
        imagePath: "assets/images/spine.png",
        subInjuries: [
          Injury(
            id: "inj4_1",
            name: "Suspected Spinal Injury",
            description: "Potential damage to spine from fall, collision, or trauma.",
            imagePath: "assets/images/spine_injury.png",
            steps: [
              FirstAidStep(
                stepNumber: 1,
                description: "Call emergency services immediately. Do not move the person at all.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 2,
                description: "Keep the person's head, neck, and spine in alignment. Hold head still.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 3,
                description: "Place rolled towels or clothes on both sides of neck to prevent movement.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 4,
                description: "Monitor breathing and consciousness. Be prepared to perform CPR if needed.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 5,
                description: "Keep person warm with blanket. Do not give anything to eat or drink.",
                imagePath: "",
              ),
            ],
          ),
        ],
      ),
    ],
  ),

  // Burns & Heat Injuries
  InjuryType(
    id: "type2",
    name: "Burn & Heat Injury",
    imagePath: "assets/images/burn.png",
    injuries: [
      Injury(
        id: "inj5",
        name: "Thermal Burn",
        description: "Skin damage caused by heat from fire, hot liquids, or objects.",
        imagePath: "assets/images/burn.png",
        subInjuries: [
          Injury(
            id: "inj5_1",
            name: "First-Degree Burn",
            description: "Superficial burn affecting only outer skin layer. Red, painful, no blisters.",
            imagePath: "assets/images/burn_first.png",
            steps: [
              FirstAidStep(
                stepNumber: 1,
                description: "Cool the burn under cool (not cold) running water for 10-20 minutes.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 2,
                description: "Remove jewelry and tight clothing from the burned area before swelling.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 3,
                description: "Apply aloe vera gel or moisturizing lotion after cooling.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 4,
                description: "Cover with sterile, non-stick bandage if needed. Do not apply ice, butter, or oil.",
                imagePath: "",
              ),
            ],
          ),
          Injury(
            id: "inj5_2",
            name: "Second-Degree Burn",
            description: "Partial thickness burn with blisters, severe pain, and red/white appearance.",
            imagePath: "assets/images/burn_second.png",
            steps: [
              FirstAidStep(
                stepNumber: 1,
                description: "Cool with running water for 15-20 minutes. Do not use ice.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 2,
                description: "Do not break blisters. They protect against infection.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 3,
                description: "Cover loosely with sterile, non-adhesive bandage or clean cloth.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 4,
                description: "Elevate burned area above heart level if possible to reduce swelling.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 5,
                description: "Seek medical attention immediately, especially if larger than 3 inches.",
                imagePath: "",
              ),
            ],
          ),
          Injury(
            id: "inj5_3",
            name: "Third-Degree Burn",
            description: "Full thickness burn destroying all skin layers. May appear white, black, or charred.",
            imagePath: "assets/images/burn_third.png",
            steps: [
              FirstAidStep(
                stepNumber: 1,
                description: "Call emergency services immediately. This is a life-threatening emergency.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 2,
                description: "Do not remove burned clothing stuck to skin. Cut around it if needed.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 3,
                description: "Cover with sterile, dry cloth or clean sheet. Do not use water.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 4,
                description: "Treat for shock: lay person flat, elevate legs, keep warm with blanket.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 5,
                description: "Monitor breathing. Be prepared to perform CPR if person becomes unconscious.",
                imagePath: "",
              ),
            ],
          ),
        ],
      ),

      Injury(
        id: "inj6",
        name: "Chemical Burn",
        description: "Skin or eye damage from contact with corrosive substances.",
        imagePath: "assets/images/chemical_burn.png",
        subInjuries: [
          Injury(
            id: "inj6_1",
            name: "Skin Chemical Burn",
            description: "Chemical contact causing skin damage.",
            imagePath: "assets/images/chemical_skin.png",
            steps: [
              FirstAidStep(
                stepNumber: 1,
                description: "Remove contaminated clothing carefully. Protect yourself with gloves.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 2,
                description: "Flush area with large amounts of running water for at least 20 minutes.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 3,
                description: "Do not try to neutralize with other chemicals. Continue flushing.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 4,
                description: "Remove jewelry and accessories from affected area.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 5,
                description: "Cover loosely with dry, sterile dressing and seek emergency medical care.",
                imagePath: "",
              ),
            ],
          ),
          Injury(
            id: "inj6_2",
            name: "Eye Chemical Burn",
            description: "Chemical splash into the eye requiring immediate action.",
            imagePath: "assets/images/chemical_eye.png",
            steps: [
              FirstAidStep(
                stepNumber: 1,
                description: "Flush eye immediately with clean water or saline for at least 15-20 minutes.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 2,
                description: "Hold eye open and flush from inner corner outward to avoid contaminating other eye.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 3,
                description: "Remove contact lenses if present and easy to remove while flushing.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 4,
                description: "Do not rub the eye. Cover with sterile gauze loosely.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 5,
                description: "Seek emergency medical attention immediately. This is sight-threatening.",
                imagePath: "",
              ),
            ],
          ),
        ],
      ),

      Injury(
        id: "inj7",
        name: "Heat-Related Illness",
        description: "Conditions caused by overheating in hot environments.",
        imagePath: "assets/images/heat_illness.png",
        subInjuries: [
          Injury(
            id: "inj7_1",
            name: "Heat Exhaustion",
            description: "Heavy sweating, weakness, nausea, headache from heat exposure.",
            imagePath: "assets/images/heat_exhaustion.png",
            steps: [
              FirstAidStep(
                stepNumber: 1,
                description: "Move person to cool, shaded, or air-conditioned location immediately.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 2,
                description: "Loosen or remove excess clothing. Have person lie down.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 3,
                description: "Apply cool, wet cloths to skin or spray with cool water. Fan the person.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 4,
                description: "Give small sips of cool water if person is conscious and able to drink.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 5,
                description: "If no improvement in 30 minutes or symptoms worsen, call emergency services.",
                imagePath: "",
              ),
            ],
          ),
          Injury(
            id: "inj7_2",
            name: "Heat Stroke",
            description: "Life-threatening condition with high body temperature, confusion, possible unconsciousness.",
            imagePath: "assets/images/heat_stroke.png",
            steps: [
              FirstAidStep(
                stepNumber: 1,
                description: "Call emergency services immediately. This is a medical emergency.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 2,
                description: "Move person to cool environment. Remove excess clothing.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 3,
                description: "Cool rapidly: apply ice packs to neck, armpits, groin. Spray with cool water.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 4,
                description: "Fan vigorously to increase cooling. Continue until body temperature drops.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 5,
                description: "Do not give fluids if unconscious. Monitor breathing and be ready for CPR.",
                imagePath: "",
              ),
            ],
          ),
        ],
      ),
    ],
  ),

  // Wounds & Bleeding
  InjuryType(
    id: "type3",
    name: "Wounds & Bleeding",
    imagePath: "assets/images/wound.png",
    injuries: [
      Injury(
        id: "inj8",
        name: "Cuts & Lacerations",
        description: "Open wounds from sharp objects cutting the skin.",
        imagePath: "assets/images/cut.png",
        subInjuries: [
          Injury(
            id: "inj8_1",
            name: "Minor Cut",
            description: "Shallow cut that stops bleeding with pressure.",
            imagePath: "assets/images/minor_cut.png",
            steps: [
              FirstAidStep(
                stepNumber: 1,
                description: "Wash hands thoroughly with soap and water before treating.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 2,
                description: "Rinse wound under clean running water for several minutes.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 3,
                description: "Clean around wound with soap. Do not put soap directly in wound.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 4,
                description: "Apply antibiotic ointment and cover with sterile adhesive bandage.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 5,
                description: "Change bandage daily and watch for signs of infection: redness, swelling, pus.",
                imagePath: "",
              ),
            ],
          ),
          Injury(
            id: "inj8_2",
            name: "Deep Laceration",
            description: "Deep cut that may require stitches, bleeding heavily.",
            imagePath: "assets/images/deep_cut.png",
            steps: [
              FirstAidStep(
                stepNumber: 1,
                description: "Apply direct pressure with clean cloth or sterile gauze immediately.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 2,
                description: "Maintain firm pressure for 10-15 minutes without lifting to check.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 3,
                description: "If blood soaks through, add more cloth on top. Do not remove original.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 4,
                description: "Elevate injured area above heart level if possible.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 5,
                description: "Once bleeding slows, bandage firmly and seek immediate medical attention.",
                imagePath: "",
              ),
            ],
          ),
        ],
      ),

      Injury(
        id: "inj9",
        name: "Puncture Wound",
        description: "Deep, narrow wound from sharp pointed object.",
        imagePath: "assets/images/puncture.png",
        subInjuries: [
          Injury(
            id: "inj9_1",
            name: "Nail or Needle Puncture",
            description: "Small but deep wound from stepping on or being stabbed by sharp object.",
            imagePath: "assets/images/puncture_nail.png",
            steps: [
              FirstAidStep(
                stepNumber: 1,
                description: "Do not remove object if it's still embedded. Stabilize it and seek emergency care.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 2,
                description: "If object is out, allow wound to bleed briefly to help clear debris.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 3,
                description: "Clean wound thoroughly with soap and water for 5-10 minutes.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 4,
                description: "Apply antibiotic ointment and cover with sterile bandage.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 5,
                description: "Seek medical care for tetanus shot if not current, or if wound is deep or dirty.",
                imagePath: "",
              ),
            ],
          ),
        ],
      ),

      Injury(
        id: "inj10",
        name: "Bleeding",
        description: "Blood loss from injury requiring control.",
        imagePath: "assets/images/bleeding.png",
        subInjuries: [
          Injury(
            id: "inj10_1",
            name: "Nosebleed",
            description: "Bleeding from the nasal passages.",
            imagePath: "assets/images/nosebleed.png",
            steps: [
              FirstAidStep(
                stepNumber: 1,
                description: "Sit upright and lean forward slightly. Do not tilt head back.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 2,
                description: "Pinch soft part of nose firmly with thumb and forefinger for 10 minutes.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 3,
                description: "Breathe through mouth. Do not talk, swallow blood, or check if bleeding stopped.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 4,
                description: "Apply cold compress to bridge of nose to help constrict blood vessels.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 5,
                description: "If bleeding continues after 20 minutes or is very heavy, seek medical care.",
                imagePath: "",
              ),
            ],
          ),
          Injury(
            id: "inj10_2",
            name: "Severe External Bleeding",
            description: "Life-threatening blood loss requiring immediate action.",
            imagePath: "assets/images/severe_bleeding.png",
            steps: [
              FirstAidStep(
                stepNumber: 1,
                description: "Call emergency services immediately while starting first aid.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 2,
                description: "Apply direct pressure with clean cloth, gauze, or bare hands if nothing available.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 3,
                description: "Maintain continuous, firm pressure. Do not lift cloth to check bleeding.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 4,
                description: "If bleeding doesn't stop, apply pressure to arterial pressure point.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 5,
                description: "If limb bleeding uncontrolled, apply tourniquet 2-3 inches above wound. Note time applied.",
                imagePath: "",
              ),
            ],
          ),
          Injury(
            id: "inj10_3",
            name: "Internal Bleeding",
            description: "Bleeding inside body from trauma, suspected by symptoms.",
            imagePath: "assets/images/internal_bleeding.png",
            steps: [
              FirstAidStep(
                stepNumber: 1,
                description: "Call emergency services immediately if suspected internal bleeding.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 2,
                description: "Look for signs: bruising, pale/clammy skin, rapid pulse, confusion, coughing blood.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 3,
                description: "Have person lie down. Keep them still and calm.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 4,
                description: "Loosen tight clothing. Cover with blanket to prevent heat loss.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 5,
                description: "Do not give anything to eat or drink. Monitor breathing and pulse.",
                imagePath: "",
              ),
            ],
          ),
        ],
      ),

      Injury(
        id: "inj11",
        name: "Abrasion & Scrapes",
        description: "Superficial skin injury from friction or rubbing.",
        imagePath: "assets/images/abrasion.png",
        subInjuries: [
          Injury(
            id: "inj11_1",
            name: "Road Rash",
            description: "Severe skin abrasion from sliding on pavement or rough surface.",
            imagePath: "assets/images/road_rash.png",
            steps: [
              FirstAidStep(
                stepNumber: 1,
                description: "Wash hands thoroughly before treating the wound.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 2,
                description: "Gently rinse wound with clean water to remove dirt and debris.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 3,
                description: "Clean carefully with mild soap. Remove embedded particles with clean tweezers.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 4,
                description: "Apply antibiotic ointment and cover with non-stick gauze bandage.",
                imagePath: "",
              ),
              FirstAidStep(
                stepNumber: 5,
                description: "Change dressing daily. Seek medical care if large area or shows infection signs.",
                imagePath: "",
              ),
            ],
          ),
        ],
      ),
    ],
  ),];