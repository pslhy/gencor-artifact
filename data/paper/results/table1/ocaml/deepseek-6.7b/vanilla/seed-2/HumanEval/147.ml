let rec get_max_triples (n : int) : int =
  let arr = Array.init n (fun i -> (i + 1) * (i + 1) - (i + 1) + 1) in
  let mod_cnt = Array.make 3 0 in
  let zero_cnt = Array.make 3 0 in
  let triple_cnt = ref 0 in
  for i = 0 to n - 1 do
    let mod_val = arr.(i) mod 3 in
    mod_cnt.(mod_val) <- mod_cnt.(mod_val) + 1;
  done;
  triple_cnt := !triple_cnt + (mod_cnt.(0) * (mod_cnt.(0) - 1) * (mod_cnt.(0) - 2) / 6);
  triple_cnt := !triple_cnt + (mod_cnt.(1) * (mod_cnt.(1) - 1) * (mod_cnt.(1) - 2) / 6);
  triple_cnt := !triple_cnt + (mod_cnt.(2) * (mod_cnt.(2) - 1) * (mod_cnt.(2) - 2) / 6);
  triple_cnt := !triple_cnt + (mod_cnt.(0) * (mod_cnt.(1) * (mod_cnt.(1) - 1) / 2));
  triple_cnt := !triple_cnt + (mod_cnt.(0) * (mod_cnt.(2) * (mod_cnt.(2) - 1) / 2));
  triple_cnt := !triple_cnt + (mod_cnt.(1) * (mod_cnt.(2) * (mod_cnt.(2) - 1) / 2));
  triple_cnt := !triple_cnt + (mod_cnt.(0) * (mod_cnt.(0) - 1) / 2);
  !triple_cnt


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
