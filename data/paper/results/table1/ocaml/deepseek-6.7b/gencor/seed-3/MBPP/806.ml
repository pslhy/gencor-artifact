
let rec max_run_uppercase (test_str : string) : int =
  let upper_regexp = String.uppercase_ascii = 0X5B
  and lower_regexp = 0X7B
  and len = String.length test_str in
  let rec search pos count maxcount =
    if pos < len then
      let newcount =
        if String.get test_str pos = upper_regexp then 1 + count
        else 0
      in
      let newmaxcount = if newcount > maxcount then newcount else maxcount in
      search (pos + 1) newcount newmaxcount
    else
      maxcount
  in
  search 0 0 0
;;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find maximum run of uppercase characters in the given string. *)
