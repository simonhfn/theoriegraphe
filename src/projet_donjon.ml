open Graph.Pack.Graph;;

(* Quelques fonctions auxiliaires *)
let rec add_vertices g list_v =
    match list_v with
    | [] -> ()
    | t::q ->
        add_vertex g t;
        add_vertices g q;;

let rec add_edges g list_e =
    match list_e with
    | [] -> ()
    | t::q ->
        add_edge_e g t;
        add_edges g q;;

let true_copy g =
    let g_prime = Graph.Pack.Graph.create() in
    let sommets = fold_vertex (fun v l -> v::l) g [] in
    let edges = fold_edges_e (fun e l -> e::l) g [] in
    add_vertices g_prime sommets;
    add_edges g_prime edges;
    g_prime;;


(**********************************************************************)
(************************ PARTIE 1 ************************************)
(**********************************************************************)

(* Vous pouvez définir autant de fonctions auxiliaires que nécessaire *)



(* v_reach g v :
 * Graph.Pack.Graph.t -> Graph.Pack.Graph.V.t -> Graph.Pack.Graph.V.t list
 *
 * Renvoie la liste des sommets atteignables en partant de v dans le graphe g
 *)

let rec v_reach g v =
    Mark.clear g;
    let rec explorer g s =
        Mark.set s 1;
        List.iter (fun a -> if (Mark.get a = 0) then (explorer g a );) (succ g s);
    in
    explorer g v;
    fold_vertex (fun t q -> if (Mark.get t = 1) then t::q else q) g []



(* cles_accessibles g vi cles :
 * Graph.Pack.Graph.t ->
 * Graph.Pack.Graph.V.t ->
 * (Graph.Pack.Graph.V.t * Graph.Pack.Graph.E.t list) list ->
 * (Graph.Pack.Graph.V.t * Graph.Pack.Graph.E.t list) list
 *
 * Renvoie la liste des éléments de cles dont les premiers
 * éléments (les sommets) sont atteignables depuis vi
 *)

let cles_accessibles g vi cles =
    let l = v_reach g vi in
    List.fold_right(fun t q -> if (List.mem (fst t) l) then t::q else q ) cles []


(* ouvre_porte g cle :
 * Graph.Pack.Graph.t ->
 * Graph.Pack.Graph.V.t * Graph.Pack.Graph.E.t list ->
 * Graph.Pack.Graph.t
 *
 * Renvoie une copie du graphe g dans laquelle les arêtes
 * contenues dans le second élément de cle ont été ajoutées
 *)

let ouvre_porte g cle =
    let g1=(true_copy g) in
    List.map (add_edges g1) (snd cle);



(* faisable g vi vf cles :
 * Graph.Pack.Graph.t ->
 * Graph.Pack.Graph.V.t ->
 * Graph.Pack.Graph.V.t ->
 * (Graph.Pack.Graph.V.t * Graph.Pack.Graph.E.t list) list ->
 * bool
 *
 * Renvoie un booléen indiquant s'il est possible d'accéder à vf
 * dans le donjon représenté par le graphe g en partant de vi
 * connaissant les positions des clés et des portes qu'elles
 * ouvrent cles
 *)

let faisable g vi vf cles =
    let g_copy = true_copy g in faisable_aux g_copy vi vf cles;
	match cles.size (*???*) with
	|0-> if List.mem vf (v_reach g_copy vi) then true else false
	|_->ouvre_porte g_copy cles;
(*

(* parcours_salles_principales g vi vf cles :
 * Graph.Pack.Graph.t ->
 * Graph.Pack.Graph.V.t ->
 * Graph.Pack.Graph.V.t ->
 * (Graph.Pack.Graph.V.t * Graph.Pack.Graph.E.t list) list ->
 * Graph.Pack.Graph.V.t list
 *
 * Renvoie la liste des salles principales pour aller de vi à
 * vf quand le donjon est faisable
 *)

let parcours_salles_principales g vi vf cles =



(* parcours g vi vf cles :
 * Graph.Pack.Graph.t ->
 * Graph.Pack.Graph.V.t ->
 * Graph.Pack.Graph.V.t ->
 * (Graph.Pack.Graph.V.t * Graph.Pack.Graph.E.t list) list ->
 * Graph.Pack.Graph.V.t list
 *
 * Renvoie la liste des salles à parcourir pour aller de vi à
 * vf quand le donjon est faisable
 *)

let parcours g vi vf cles =


*)
(**********************************************************************)
(************************ PARTIE 2 ************************************)
(**********************************************************************)
