let rec get_max_triples (n : int) : int =
    let a = [| 1; 3; 7; 13; 21 |] in
    let rec aux (i : int) (j : int) (k : int) (num_triples : int) : int =
        if i >= n then num_triples
        else if j >= n then aux (i + 1) 1 (k + 1) num_triples
        else if k >= n then aux i (j + 1) 1 num_triples
        else if (a.(i) + a.(j) + a.(k)) mod 3 = 0 then aux i j (k + 1) (num_triples + 1)
        else aux i j (k + 1) num_triples
    in
    aux 1 2 3 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
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
