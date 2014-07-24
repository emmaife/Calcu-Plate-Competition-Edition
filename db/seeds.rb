squat = Lift.create(name: 'Squat')
bench = Lift.create(name: 'Bench Press')
squat = Lift.create(name: 'Deadlift')

wt_class1 = WeightClass.create(weight: 97)
wt_class2 = WeightClass.create(weight: 105)
wt_class3 = WeightClass.create(weight: 114)
wt_class4 = WeightClass.create(weight: 123)

comp_class1 = CompetitionClass.create(name: 'Amateur')
comp_class2 = CompetitionClass.create(name: 'Professional')
comp_class3 = CompetitionClass.create(name: 'Elite Am')
comp_class4 = CompetitionClass.create(name: 'Police/Fire Am')
comp_class5 = CompetitionClass.create(name: 'Police/Fire Pro')
comp_class6 = CompetitionClass.create(name: 'Military Am')
comp_class7 = CompetitionClass.create(name: 'Military Pro')

AgeDivision.create(name: 'Open')
AgeDivision.create(name: 'Teen 14-15')
AgeDivision.create(name: 'Teen 16-17')
AgeDivision.create(name: 'Teen 18-19')
AgeDivision.create(name: 'Junior 20-23')
AgeDivision.create(name: 'Submaster')
AgeDivision.create(name: 'Master 40-44')

EquipmentDivision.create(name: 'Multi-Ply')
EquipmentDivision.create(name: 'Raw Classic')
EquipmentDivision.create(name: 'Raw Modern')
EquipmentDivision.create(name: 'Single-Ply')



