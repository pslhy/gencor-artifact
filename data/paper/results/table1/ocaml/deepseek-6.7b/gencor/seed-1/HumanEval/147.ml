
let rec get_max_triples (n : int) : int =
  let rec calculate_a (n : int) (i : int) : (int list * int) =
    if i = n then ([], 0)
    else 
      let (a, count) = calculate_a n (i + 1) in 
      let a_i = (i * i - i + 1) in
      let count = if a_i mod 3 = 0 then count + 1 else count in
      (a_i :: a, count)
  in
  let (a, _) = calculate_a n 1 in
  let rec get_triples (a : int list) (i : int) (count : int) : int =
    match a with
    | [] -> count
    | _ :: t -> min (get_triples t (i + 1) count) (count + if List.exists (fun x -> (x + a.((Array.of_list t)[i])) mod 3 = 0) (List.filter (fun j -> j mod 3 <> a.((Array.of_list t)[i]) mod 3) (List.init (i) (fun j -> j))) then 1 else 0)
  in
  get_triples a 0 0

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
