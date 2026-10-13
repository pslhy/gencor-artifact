let rec anti_shuffle (s : string) : string =
  match s with
  | "" -> ""
  | _ -> begin
      let space_pos = String.index_from s 0 ' ' in
      if space_pos = -1 then String.concat "" (List.rev (List.sort compare (explode s)))
      else
        String.sub s 0 space_pos ^ " " ^ anti_shuffle (String.sub s (space_pos+1) (String.length s - space_pos - 1))
    end;;

let explode s =
  let rec exp i l =
    if i = String.length s then l else exp (i + 1) (s.[i] :: l)
  in
  List.rev (exp 0 []);;

print_endline (anti_shuffle "Hello World!!!");;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes a string and returns an ordered version of it. *)
(*     Ordered version of string, is a string where all words (separated by space) *)
(*     are replaced by a new word where all the characters arranged in *)
(*     ascending order based on ascii value. *)
(*     Note: You should keep the order of words and blank spaces in the sentence. *)
(*     For example: *)
(*     >>> anti_shuffle "Hi" *)
(*     "Hi" *)
(*     >>> anti_shuffle "hello" *)
(*     "ehllo" *)
(*     >>> anti_shuffle "Hello World!!!" *)
(*     "Hello !!!Wdlor" *)
