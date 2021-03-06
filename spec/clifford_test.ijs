load 'src/clifford.ijs'

test_square_of_element_is_identity =: 3 : 0
    assert (e1 mul e1) eq  I
	assert (e2 mul e2) eq  I
	assert (e3 mul e3) eq  I
)

test_anticommutation =: 3 : 0
    assert (e1 mul e2) eq _1 * (e2 mul e1)
    assert (e2 mul e3) eq _1 * (e3 mul e2)
  	assert (e3 mul e1) eq _1 * (e1 mul e3)
)

test_scalarproduct =: 3 : 0
    a =. 1 2 3
    b =. 10 20 30
    assert ((a mul b) * I) eq ((vec a) scalarprod (vec b))
)

test_wedge_product =: 3 : 0
    a =. vec 1 2 3
	b =. vec 6 8 4
    assert ( a wedge b ) eq _1 * ( b wedge a)
	assert ( a wedge a ) eq zero
)

test_multivectors =: 3 : 0
	assert e12 eq _1 * e21
	assert e13 eq _1 * e31
	assert e23 eq _1 * e32
	assert e123 eq _1 * e213
    assert e123 eq e231
)