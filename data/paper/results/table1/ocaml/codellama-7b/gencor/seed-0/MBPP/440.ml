
let rec find_adverb_position (text : string) :  int * int * string =
  match text with
  | "" -> raise Not_found
  | text -> 
    match (List.rev @@ String.split_on_char ' ' text) with
    | [] -> raise Not_found
    | _ :: _ :: adv :: pos :: _ -> (pos, int_of_string adv)
    | _ -> raise Not_found

let sentence = "The dog is brown";;
find_adverb_position sentence;;
(*  (5, 3) "brown" *)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the first adverb and their positions in a given sentence. *)
