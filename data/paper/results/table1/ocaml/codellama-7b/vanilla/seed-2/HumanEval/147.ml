let rec get_max_triples (n : int) : int =
    let a = List.init n (fun i -> i * i - i + 1) in
    let rec count_triples (i : int) (j : int) (k : int) (acc : int) : int =
        if i = j || j = k || k = i then acc
        else if a.(i) + a.(j) + a.(k) mod 3 = 0 then
            count_triples i (j + 1) k (acc + 1)
        else count_triples i (j + 1) k acc
    in
    List.fold_left (fun acc i -> acc + count_triples 0 (i + 1) (n - 1) 0) 0 a


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
