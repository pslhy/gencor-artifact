
let rec remove_dirty_chars (string : string) (second_string : string) : string =
  if second_string = "" then
    string
  else
    remove_dirty_chars (String.map (fun c -> if c = second_string.[0] then c else ' ') string) (String.sub second_string 1 (String.length second_string - 1))

let () =
  let input_1 = read_line () in
  let input_2 = read_line () in
  print_endline (remove_dirty_chars input_1 input_2)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove characters from the first string which are present in the second string. *)
