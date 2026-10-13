let rec get_max_triples (n : int) : int = 
  let rec generate_list acc i =
    if i > n then acc else generate_list (i * i - i + 1 :: acc) (i + 1)
  in
  let a = generate_list [] 1 in
  let rec count_triples count i j k =
    if i >= n - 2 then count else
    let sum = a.[i] + a.[j] + a.[k] in
    if sum mod 3 = 0 then count_triples (count + 1) (i + 1) j (k + 1)
    else if k = n - 1 then count_triples count (i + 1) (j + 1) (j + 2)
    else count_triples count i j (k + 1)
  in
  count_triples 0 0 1 2


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
