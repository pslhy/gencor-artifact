let rec tup_string (tup1 : string list) : string =
  if List.length tup1 = 0 then "" else
    let (h :: t) = tup1 in
    h ^ " " ^ tup_string t;;

List.rev (tup_string (List.rev ("hello world" :: [])));;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert a list to a string. *)
