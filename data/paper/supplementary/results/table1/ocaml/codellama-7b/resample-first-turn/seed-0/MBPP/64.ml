let rec subject_marks (subjectmarks :  (string * int) list) :  (string * int) list =
 match subjectmarks with
 | [] -> []
 | ((name, grade) as head) :: tail ->
	let sortedtail = subject_marks tail in
	match sortedtail with
	| [] -> [head]
	| (name', grade') :: _ when grade > grade' -> [head] @ sortedtail
	| _ -> sortedtail @ [head] in

let grades = [("maths", 65); ("phy", 70); ("chem", 55); ("phy", 80)];;
let sorted_grades = subject_marks grades;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of tuples using the second value of each tuple. *)
