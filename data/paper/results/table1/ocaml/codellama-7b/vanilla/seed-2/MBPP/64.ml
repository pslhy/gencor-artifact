let rec subject_marks (subjectmarks :  (string * int) list) :  (string * int) list =
 match subjectmarks with
 | [] -> []
 | first :: rest ->
 let sorted_rest = subject_marks rest in
 match sorted_rest with
 | [] -> [first]
 | first_rest :: _ ->
 if stnd_rest = []
 then
 match first with
 | hd, _ -> hd :: sorted_rest
 else if first < hd
 then
 match first_rest with
 | hd, _ -> hd :: sorted_rest
 | first :: rest ->
 let rec sort_rest last first = function
 | [] -> last :: rest
 | first ->
 let last,firstrest=first in
 if first<last
 then
 sort_rest last first (first :: firstrest)
 else if first=last
 then
 sort_rest last first firstrest
 else
 last :: rest
 match first_rest with
 | hd, rest -> (hd, rest)
 else first :: least_rest
 else
 match first with
 | hd, rest -> (hd, rest)
 else first :: least_rest
This implementation uses Ocaml built-in list functions


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of tuples using the second value of each tuple. *)
