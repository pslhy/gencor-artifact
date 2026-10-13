(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     You are given a positive integer n. You have to create an integer list a of length n. *)
(*     For each i (1 ≤ i ≤ n), the value of a[i] = i * i - i + 1. *)
(*     Return the number of triples (a[i], a[j], a[k]) of a where i < j < k, *)
(*     and a[i] + a[j] + a[k] is a multiple of 3. *)
(*     Example : *)
(*     >>> get_max_triples 5 *)
(*     1 *)
(*     Explanation: *)
(*     a = [1, 3, 7, 13, 21] *)
(*     The only valid triple is (1, 7, 13). *)
let rec get_max_triples (n : int) : int = 
    let a = [for i in 1 to n do i * i - i + 1 done] in
    let count = 
        List.fold_left 
            (fun acc (i, j, k) -> 
                if (a.(i) + a.(j) + a.(k)) mod 3 = 0 then acc + 1 else acc) 
            0 
            (List.cartesian_product (List.range 0 (n-1)) (List.range 0 (n-2)) (List.range 0 (n-3)))
    in
    count

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:20: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_max_triples (n : int) : int = 
    let a = Array.of_list (List.map (fun i -> i * i - i + 1) (List.range 1 n)) in
    let count = 
        List.fold_left 
            (fun acc (i, j, k) -> 
                if (a.(i) + a.(j) + a.(k)) mod 3 = 0 then acc + 1 else acc) 
            0 
            (List.cartesian_product (List.range 0 (n-1)) (List.range 0 (n-2)) (List.range 0 (n-3)))
    in
    count

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:63: Unbound value "List.range" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_max_triples (n : int) : int = 
    let rec range a b =
        if a = b then [a]
        else a :: range (a + 1) b
    in
    let a = Array.of_list (List.map (fun i -> i * i - i + 1) (range 1 n)) in
    let count = 
        List.fold_left 
            (fun acc (i, j, k) -> 
                if (a.(i) + a.(j) + a.(k)) mod 3 = 0 then acc + 1 else acc) 
            0 
            (List.cartesian_product (range 0 (n-1)) (range 0 (n-2)) (range 0 (n-3)))
    in
    count

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:12:14: Unbound value "List.cartesian_product" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_max_triples (n : int) : int = 
    let rec range a b =
        if a = b then [a]
        else a :: range (a + 1) b
    in
    let a = Array.of_list (List.map (fun i -> i * i - i + 1) (range 1 n)) in
    let rec cartesian_product lst1 lst2 =
        List.fold_left (fun acc x -> List.concat (List.map (fun y -> [(x, y)]) lst2) @ acc) [] lst1
    in
    let count = 
        List.fold_left 
            (fun acc (i, j, k) -> 
                if (a.(i) + a.(j) + a.(k)) mod 3 = 0 then acc + 1 else acc) 
            0 
            (cartesian_product (range 0 (n-1)) (cartesian_product (range 0 (n-2)) (range 0 (n-3))))
    in
    count

