
let rec anti_shuffle (s : string) : string =
  match s with
  | "" -> ""
  | _ -> begin
      let space_pos = String.index_from s 0 ' ' in
      if space_pos = -1 then String.concat "" (List.rev (List.sort compare (string_of_int (Char.code s.[0])) :: List.map (fun x -> String.make 1 x) (List.tl (String.to_seq s))))
      else
        let (first_part, rest) = String.split_on_char ' ' s in
        let (first_part, rest) = (String.concat "" (List.rev (List.sort compare (string_of_int (Char.code first_part.[0])) :: List.map (fun x -> String.make 1 x) (List.tl (String.to_seq first_part)))), anti_shuffle rest) in
        String.concat "" [first_part; " "; rest]
    end
;;

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
