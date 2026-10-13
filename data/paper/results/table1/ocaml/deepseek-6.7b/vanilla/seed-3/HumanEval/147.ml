let rec get_max_triples (n : int) : int =
  let a = List.init n (fun i -> (i * i - i + 1)) in
  let rec count_triples (a : int list) (i : int) (cnt : int) : int =
    if i = n then cnt
    else
      let j = List.find_opt (fun j -> i < j && (a.(!(i)) + a.(!(j)) ) mod 3 = 0) (List.tl (List.init n (fun _ -> (i+1)))) in
      match j with
      | None -> count_triples a (i + 1) cnt
      | Some j -> count_triples a (i + 1) ((List.length (List.filter (fun k -> k > j && (a.(!(i)) + a.(!(j)) + a.(!(k))) mod 3 = 0) (List.init n (fun _ -> (j+1))))) + cnt)
  in
  count_triples a 0 0


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
