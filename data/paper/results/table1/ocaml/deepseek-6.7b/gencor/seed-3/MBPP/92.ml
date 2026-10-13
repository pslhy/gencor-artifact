
let rec is_undulating (n : int) : bool =
  let s = String.of_seq @@ String.to_seq (string_of_int n) in
  let len = String.length s in
  if len <= 2 then false
  else
  let rec check_undulating start =
    if start + 2 >= len then true
    else
      if s.[start] = s.[start + 1] || s.[start] <> s.[start + 2] then
        check_undulating (start + 1)
      else 
        false
  in
  check_undulating 0

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is undulating or not. *)
