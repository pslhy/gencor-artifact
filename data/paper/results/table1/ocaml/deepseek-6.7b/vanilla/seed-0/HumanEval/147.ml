let rec get_max_triples (n : int) : int =
    if n < 3 then 0
    else
        let a = List.init n (fun i -> (i+1) * (i+1) - i) in
        let rec count_triples (a : int list) (i : int) (j : int) (k : int) (res : int) : int =
            match i, j, k with
            | _, _, _ when i >= n - 1 -> res
            | _, _, _ when j >= n - 1 -> count_triples a (i+1) (i+2) (i+3) res
            | _, _, _ when k >= n -> count_triples a i (j+1) (j+2) res
            | i, j, k when (a.(i) + a.(j) + a.(k)) mod 3 = 0 -> count_triples a i j (k+1) (res+1)
            | i, j, k -> count_triples a i j (k+1) res
        in count_triples a 0 1 2 0


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
