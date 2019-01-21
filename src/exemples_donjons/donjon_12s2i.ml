open Graph.Pack.Graph;;

let dj = Graph.Pack.Graph.create();;

let v_12 = V.create 12;;
add_vertex dj v_12;;
let v_13 = V.create 13;;
add_vertex dj v_13;;
let v_21 = V.create 21;;
add_vertex dj v_21;;
let v_22 = V.create 22;;
add_vertex dj v_22;;
let v_23 = V.create 23;;
add_vertex dj v_23;;
let v_24 = V.create 24;;
add_vertex dj v_24;;
let v_31 = V.create 31;;
add_vertex dj v_31;;
let v_32 = V.create 32;;
add_vertex dj v_32;;
let v_33 = V.create 33;;
add_vertex dj v_33;;
let v_34 = V.create 34;;
add_vertex dj v_34;;
let v_42 = V.create 42;;
add_vertex dj v_42;;
let v_43 = V.create 43;;
add_vertex dj v_43;;

let e_12_13 = E.create v_12 1 v_13;;
add_edge_e dj e_12_13;;
let e_13_23 = E.create v_13 1 v_23;;
add_edge_e dj e_13_23;;
let e_13_12 = E.create v_13 1 v_12;;
add_edge_e dj e_13_12;;
let e_21_22 = E.create v_21 1 v_22;;
add_edge_e dj e_21_22;;
let e_22_32 = E.create v_22 1 v_32;;
let e_22_23 = E.create v_22 1 v_23;;
add_edge_e dj e_22_23;;
let e_22_21 = E.create v_22 1 v_21;;
add_edge_e dj e_22_21;;
let e_23_13 = E.create v_23 1 v_13;;
add_edge_e dj e_23_13;;
let e_23_33 = E.create v_23 1 v_33;;
let e_23_24 = E.create v_23 1 v_24;;
add_edge_e dj e_23_24;;
let e_23_22 = E.create v_23 1 v_22;;
add_edge_e dj e_23_22;;
let e_24_23 = E.create v_24 1 v_23;;
add_edge_e dj e_24_23;;
let e_31_32 = E.create v_31 1 v_32;;
add_edge_e dj e_31_32;;
let e_32_22 = E.create v_32 1 v_22;;
let e_32_33 = E.create v_32 1 v_33;;
add_edge_e dj e_32_33;;
let e_32_31 = E.create v_32 1 v_31;;
add_edge_e dj e_32_31;;
let e_33_23 = E.create v_33 1 v_23;;
let e_33_43 = E.create v_33 1 v_43;;
add_edge_e dj e_33_43;;
let e_33_34 = E.create v_33 1 v_34;;
add_edge_e dj e_33_34;;
let e_33_32 = E.create v_33 1 v_32;;
add_edge_e dj e_33_32;;
let e_34_33 = E.create v_34 1 v_33;;
add_edge_e dj e_34_33;;
let e_42_43 = E.create v_42 1 v_43;;
add_edge_e dj e_42_43;;
let e_43_33 = E.create v_43 1 v_33;;
add_edge_e dj e_43_33;;
let e_43_42 = E.create v_43 1 v_42;;
add_edge_e dj e_43_42;;

let interrupteurs = [ (v_21, [e_23_33; e_33_23; e_33_43; e_43_33]); (v_34, [e_22_32; e_32_22]) ]

let vi = v_12;;

let vf = v_43;;
