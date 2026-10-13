let rec get_max_triples (n : int) : int =
  let rec calculate_a (n : int) (i : int) : (int list * int) =
    if i = n then ([], 0)
    else 
      let (a, count) = calculate_a n (i + 1) in 
      let a_i = (i * i - i + 1) in
      let count = if a_i % 3 = 0 && List.length (List.filter (fun x -> (x + a_i) % 3 = 0) a) > 0 then count + 1 else count in 
      (a_i :: a, count) in
  let (_, count) = calculate_a n 1 in count;;


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
