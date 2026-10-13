let rec reverse_words (s : string) : string = 
  let rec split (str: string) (acc: string list) : string list = 
    if String.length str = 0 then acc
    else 
      let i = try String.index str ' ' with Not_found -> String.length str in
      split (String.sub str (i + 1) (String.length str - i - 1)) (String.sub str 0 i :: acc)
  in
  let words = split s [] in
  String.concat " " (List.rev words)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to reverse words seperated by spaces in a given string. *)
