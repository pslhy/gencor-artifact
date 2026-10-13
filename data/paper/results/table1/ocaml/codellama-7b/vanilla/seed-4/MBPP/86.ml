let rec centered_hexagonal_number (n : int) : int =
  if n = 1 then
    1
  else
    let rec loop (i : int) (sum : int) : int =
      if i = n then
        sum
      else
        let sum' = sum + 2 * i + 1 in
        loop (i + 1) sum'
    in
    loop 1 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find nth centered hexagonal number. *)
