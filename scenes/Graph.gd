extends Node2D

func _draw():
	var fonte = preload("res://fonts/coolvetica.otf")
	
	var V1: RigidBody2D = self.get_child(0)
	var V2: RigidBody2D = self.get_child(1)
	var V3: RigidBody2D = self.get_child(2)
	var V4: RigidBody2D = self.get_child(3)

	var entre_V1_e_V2 = add_space(encontrar_ponto_central(V1.get_global_position(), V2.get_global_position()))
	var entre_V2_e_V3 = add_space(encontrar_ponto_central(V2.get_global_position(), V3.get_global_position()))
	var entre_V3_e_V4 = add_space(encontrar_ponto_central(V3.get_global_position(), V4.get_global_position()))

	draw_string(fonte, entre_V1_e_V2, "A")
	draw_string(fonte, entre_V2_e_V3, "B")
	draw_string(fonte, entre_V3_e_V4, "C")


func encontrar_ponto_central(pontoA: Vector2, pontoB: Vector2) -> Vector2:
	var pontoCentral = Vector2()
	pontoCentral.x = (pontoA.x + pontoB.x) / 2
	pontoCentral.y = (pontoA.y + pontoB.y) / 2
	return pontoCentral

func add_space(ponto: Vector2) -> Vector2:
	ponto.x += 10
	ponto.y += 10
	return ponto
