
let rec get_max_triples (n : int) : int = 
  let rec helper a i j k count =
    if i = n then count
    else if j = n then helper a (i + 1) 0 0 count
    else if k = n then helper a i (j + 1) 0 count
    else let ai = a.(i)
             and aj = a.(j)
             and ak = a.(k) in
         if (ai + aj + ak) mod 3 = 0 then helper a i j (k + 1) (count + 1)
         else helper a i j (k + 1) count
  in
  let a = Array.init n (fun i -> i * i - i + 1) in
  helper a 0 0 0 0

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
