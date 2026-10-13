let rec subject_marks (subjectmarks :  (string * int) list) :  (string * int) list =
  match subjectmarks with
  | [] -> []
  | h :: t ->
    let sorted_marks = subject_marks t in
    let (curr_subject, curr_mark) = h in
    let (curr_subject', sorted_marks') = List.partition (fun (m, _) -> m = curr_subject) sorted_marks in
    List.append sorted_marks' [curr_subject, curr_mark] ;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of tuples using the second value of each tuple. *)
