let rec subject_marks (subjectmarks :  (string * int) list) :  (string * int) list = 
    match subjectmarks with 
      head :: tail ->  ( let (subject,mark) = head in 
      match tail with 
        [] -> [head] 
          hed :: tail -> let list1 = subject_marks tail in 
          if mark > (fst (List.hd list1)) then 
            (head)::list1 
          else list1)] 
    [(("Other",100),("Other",90),("Maths",80),("Maths",70),("Maths",85),("Other",60))] in

 let subject_marks_list = [(("Other",100),("Other",90),("Maths",80),("Maths",70),("Maths",85),("Other",60))] 
 (fun args -> let args_len = List.length args in 
  if args_len < 1 then 
    0 
   else 
    let arg1 = subject_marks (fst args) in 
    let arg2 = subject_marks (snd args) in
    Ocamlclib.sort_tuple_list arg1 arg2 (fun x y -> compare_strings (fst x) (fst y)) in ) [[]];;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of tuples using the second value of each tuple. *)
