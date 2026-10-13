
let rec max_run_uppercase (test_str : string) : int =
  let rec helper (str : string) (count : int) (max : int) : int =
    match str with
    | "" -> max
    | _ ->
      if Char.uppercase_ascii (String.get str 0) = String.get str 0 then
        helper (String.sub str 1 (String.length str - 1)) (count + 1) (max |> max count)
      else
        helper (String.sub str 1 (String.length str - 1)) 0 (max |> max count)
  in
  helper test_str 0 0;;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find maximum run of uppercase characters in the given string. *)
