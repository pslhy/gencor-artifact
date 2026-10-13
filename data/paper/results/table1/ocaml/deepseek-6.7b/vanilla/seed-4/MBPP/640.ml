let rec remove_parenthesis (items : string list) : string =
  match items with
  |[] -> ""
  | hd :: tl ->
      if (String.contains hd (")") ) then
        match tl with
        | [] -> ""
        | hd1::_ -> remove_parenthesis (List.tl (items))
      else hd ^ " " ^ remove_parenthesis tl;;

let input_string = "Hello (World), do you like (this)";;
let output_string = remove_parenthesis (String.split_on_char ' ' input_string);;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove the parenthesis and what is inbetween them from a string. *)
