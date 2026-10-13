
let rec reverse_words (s : string) : string = 
  let words = String.split_on_char ' ' s in
  let rec reverse acc = function
    | [] -> acc
    | w :: ws -> reverse (w ^ " " ^ acc) ws
  in
  let result = reverse "" words in
  if String.length result > 0 then 
    String.sub result 0 (String.length result - 1)
  else
    result

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to reverse words seperated by spaces in a given string. *)
