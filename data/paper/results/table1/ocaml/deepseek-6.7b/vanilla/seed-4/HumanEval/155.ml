let rec even_odd_count (num : int) :  int * int =
  if num = 0 then
    (0, 0)
  else if num < 0 then
    let rec_result = even_odd_count (- num / 10) in
    if (- num) mod 10 mod 2 = 0 then
      (fst rec_result + 1, snd rec_result)
    else
      (fst rec_result, snd rec_result + 1)
  else
    let rec_result = even_odd_count (num / 10) in
    if num mod 10 mod 2 = 0 then
      (fst rec_result + 1, snd rec_result)
    else
      (fst rec_result, snd rec_result + 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given an integer. return a tuple that has the number of even and odd digits respectively. *)
(*     Example: *)
(*     >>> even_odd_count (-12) *)
(*     (1, 1) *)
(*     >>> even_odd_count 123 *)
(*     (1, 2) *)
