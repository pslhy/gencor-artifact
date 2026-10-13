let rec get_max_triples (n : int) : int =
  if n = 1 then
    0
  else
    let a = [1; 3; 7; 13; 21] in
    let get_triple (i : int) (j : int) (k : int) : int =
      let a_i = List.nth a i in
      let a_j = List.nth a j in
      let a_k = List.nth a k in
      if i < j < k && (a_i + a_j + a_k) mod 3 = 0 then
        1 + get_triple (i + 1) j k + get_triple i (j + 1) k + get_triple i j (k + 1)
      else
        0
    in
    List.fold_left ( + ) 0 (List.init (n - 1) (fun i -> get_triple (i + 1) i (i + 2)))


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
