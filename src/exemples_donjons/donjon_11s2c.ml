open Graph.Pack.Graph;;

let dj = Graph.Pack.Graph.create();;

let v_12 = V.create 12;;
add_vertex dj v_12;;
let v_13 = V.create 13;;
add_vertex dj v_13;;
let v_14 = V.create 14;;
add_vertex dj v_14;;
let v_21 = V.create 21;;
add_vertex dj v_21;;
let v_22 = V.create 22;;
add_vertex dj v_22;;
let v_23 = V.create 23;;
add_vertex dj v_23;;
let v_24 = V.create 24;;
add_vertex dj v_24;;
let v_25 = V.create 25;;
add_vertex dj v_25;;
let v_32 = V.create 32;;
add_vertex dj v_32;;
let v_33 = V.create 33;;
add_vertex dj v_33;;
let v_34 = V.create 34;;
add_vertex dj v_34;;

let e_12_22 = E.create v_12 1 v_22;;
add_edge_e dj e_12_22;;
let e_12_13 = E.create v_12 1 v_13;;
add_edge_e dj e_12_13;;
let e_13_23 = E.create v_13 1 v_23;;
add_edge_e dj e_13_23;;
let e_13_14 = E.create v_13 1 v_14;;
add_edge_e dj e_13_14;;
let e_13_12 = E.create v_13 1 v_12;;
add_edge_e dj e_13_12;;
let e_14_24 = E.create v_14 1 v_24;;
add_edge_e dj e_14_24;;
let e_14_13 = E.create v_14 1 v_13;;
add_edge_e dj e_14_13;;
let e_21_22 = E.create v_21 1 v_22;;
add_edge_e dj e_21_22;;
let e_22_12 = E.create v_22 1 v_12;;
add_edge_e dj e_22_12;;
let e_22_32 = E.create v_22 1 v_32;;
let e_22_23 = E.create v_22 1 v_23;;
add_edge_e dj e_22_23;;
let e_22_21 = E.create v_22 1 v_21;;
add_edge_e dj e_22_21;;
let e_23_13 = E.create v_23 1 v_13;;
add_edge_e dj e_23_13;;
let e_23_22 = E.create v_23 1 v_22;;
add_edge_e dj e_23_22;;
let e_24_14 = E.create v_24 1 v_14;;
add_edge_e dj e_24_14;;
let e_24_25 = E.create v_24 1 v_25;;
let e_25_24 = E.create v_25 1 v_24;;
let e_32_22 = E.create v_32 1 v_22;;
let e_32_33 = E.create v_32 1 v_33;;
add_edge_e dj e_32_33;;
let e_33_34 = E.create v_33 1 v_34;;
add_edge_e dj e_33_34;;
let e_33_32 = E.create v_33 1 v_32;;
add_edge_e dj e_33_32;;
let e_34_33 = E.create v_34 1 v_33;;
add_edge_e dj e_34_33;;

let doors = [ (v_14, [e_22_32; e_32_22]); (v_34, [e_24_25; e_25_24]) ]

let vi = v_21;;

let vf = v_25;;
