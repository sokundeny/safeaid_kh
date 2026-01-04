import '../domain/entities/injury_type.dart';
import '../domain/entities/injury.dart';
import '../domain/entities/first_aid_step.dart';

final List<InjuryType> injuryTypes = [
  InjuryType(
    id: "type1",
    name: "Physical Injury",
    imagePath: "assets/images/physical.png",
    injuries: [
      Injury(
        id: "inj1",
        name: "Head Injury",
        description: "Injury affecting the head or brain.",
        imagePath: "assets/images/head.png",
        steps: [
          FirstAidStep(
            stepNumber: 1,
            description: "Check if the person is conscious.",
            imagePath: "assets/images/head_step1.png",
          ),
          FirstAidStep(
            stepNumber: 2,
            description: "Stop bleeding gently using clean cloth.",
            imagePath: "assets/images/head_step2.png",
          ),
          FirstAidStep(
            stepNumber: 3,
            description: "Do not move the head or neck.",
            imagePath: "assets/images/head_step3.png",
          ),
          FirstAidStep(
            stepNumber: 4,
            description: "Call emergency services immediately.",
            imagePath: "assets/images/head_step4.png",
          ),
        ],
      ),

      Injury(
        id: "inj2",
        name: "Fracture",
        description: "Broken bone caused by impact or fall.",
        imagePath: "assets/images/fracture.png",
        steps: [
          FirstAidStep(
            stepNumber: 1,
            description: "Do not move the injured area.",
            imagePath: "assets/images/fracture_step1.png",
          ),
          FirstAidStep(
            stepNumber: 2,
            description: "Support the limb with padding.",
            imagePath: "assets/images/fracture_step2.png",
          ),
          FirstAidStep(
            stepNumber: 3,
            description: "Apply ice to reduce swelling.",
            imagePath: "assets/images/fracture_step3.png",
          ),
          FirstAidStep(
            stepNumber: 4,
            description: "Go to the hospital immediately.",
            imagePath: "assets/images/fracture_step4.png",
          ),
        ],
      ),

      Injury(
        id: "inj3",
        name: "Sprain",
        description: "Stretching or tearing of ligaments.",
        imagePath: "assets/images/sprain.png",
        steps: [
          FirstAidStep(
            stepNumber: 1,
            description: "Rest the injured area.",
            imagePath: "assets/images/sprain_step1.png",
          ),
          FirstAidStep(
            stepNumber: 2,
            description: "Apply ice for 15–20 minutes.",
            imagePath: "assets/images/sprain_step2.png",
          ),
          FirstAidStep(
            stepNumber: 3,
            description: "Compress with an elastic bandage.",
            imagePath: "assets/images/sprain_step3.png",
          ),
          FirstAidStep(
            stepNumber: 4,
            description: "Elevate the limb above heart level.",
            imagePath: "assets/images/sprain_step4.png",
          ),
        ],
      ),
    ],
  ),
  InjuryType(
    id: "type2",
    name: "Burn & Heat Injury",
    imagePath: "assets/images/burn.png",
    injuries: [
      Injury(
        id: "inj4",
        name: "Burn",
        description: "Damage to skin caused by heat or chemicals.",
        imagePath: "assets/images/burn.png",
        steps: [
          FirstAidStep(
            stepNumber: 1,
            description: "Remove the person from heat source.",
            imagePath: "assets/images/burn_step1.png",
          ),
          FirstAidStep(
            stepNumber: 2,
            description: "Cool the burn under running water.",
            imagePath: "assets/images/burn_step2.png",
          ),
          FirstAidStep(
            stepNumber: 3,
            description: "Do not apply ice, butter, or oil.",
            imagePath: "assets/images/burn_step3.png",
          ),
          FirstAidStep(
            stepNumber: 4,
            description: "Cover with a clean, non-stick cloth.",
            imagePath: "assets/images/burn_step4.png",
          ),
        ],
      ),

      Injury(
        id: "inj5",
        name: "Heat Stroke",
        description: "Body overheating due to prolonged heat exposure.",
        imagePath: "assets/images/heatstroke.png",
        steps: [
          FirstAidStep(
            stepNumber: 1,
            description: "Move person to a cool place.",
            imagePath: "assets/images/heat_step1.png",
          ),
          FirstAidStep(
            stepNumber: 2,
            description: "Loosen or remove excess clothing.",
            imagePath: "assets/images/heat_step2.png",
          ),
          FirstAidStep(
            stepNumber: 3,
            description: "Cool body with water or fan.",
            imagePath: "assets/images/heat_step3.png",
          ),
          FirstAidStep(
            stepNumber: 4,
            description: "Seek medical help immediately.",
            imagePath: "assets/images/heat_step4.png",
          ),
        ],
      ),
    ],
  ),
  InjuryType(
    id: "type3",
    name: "Wounds & Bleeding",
    imagePath: "assets/images/wound.png",
    injuries: [
      Injury(
        id: "inj6",
        name: "Cut / Wound",
        description: "Open wound caused by sharp object.",
        imagePath: "assets/images/wound.png",
        steps: [
          FirstAidStep(
            stepNumber: 1,
            description: "Wash hands before touching wound.",
            imagePath: "assets/images/wound_step1.png",
          ),
          FirstAidStep(
            stepNumber: 2,
            description: "Clean the wound with water.",
            imagePath: "assets/images/wound_step2.png",
          ),
          FirstAidStep(
            stepNumber: 3,
            description: "Apply pressure to stop bleeding.",
            imagePath: "assets/images/wound_step3.png",
          ),
          FirstAidStep(
            stepNumber: 4,
            description: "Cover with sterile bandage.",
            imagePath: "assets/images/wound_step4.png",
          ),
        ],
      ),

      Injury(
        id: "inj7",
        name: "Bleeding",
        description: "Loss of blood from an injury.",
        imagePath: "assets/images/bleeding.png",
        steps: [
          FirstAidStep(
            stepNumber: 1,
            description: "Apply direct pressure on wound.",
            imagePath: "assets/images/bleeding_step1.png",
          ),
          FirstAidStep(
            stepNumber: 2,
            description: "Raise injured area if possible.",
            imagePath: "assets/images/bleeding_step2.png",
          ),
          FirstAidStep(
            stepNumber: 3,
            description: "Do not remove embedded objects.",
            imagePath: "assets/images/bleeding_step3.png",
          ),
          FirstAidStep(
            stepNumber: 4,
            description: "Get medical help if bleeding continues.",
            imagePath: "assets/images/bleeding_step4.png",
          ),
        ],
      ),
    ],
  ),
];
