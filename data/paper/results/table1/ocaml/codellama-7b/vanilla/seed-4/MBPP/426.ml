let rec filter_oddnumbers (nums : int list) : int list = 
    match nums with 
      head :: tail -> 
          (match head%2 with 
           0 -> head :: filter_oddnumbers tail
         _ -> filter_oddnumbers tail
       )
     | [] -> []

let rec print_list (l : int list) : unit = 
  match l with 
    head::tail -> (print_int head); print_string(" "); print_list tail 
  | [] -> print_string("\n")

let main (n : int) : unit = 
  let rec produce_oddnumbers (i : int) (nums : int list) : int list = 
    if i > n then nums else produce_oddnumbers (i+1) (i :: nums)
  let oddnumberslist = produce_oddnumbers 1 []
  let filtered_oddnumbers_list = filter_oddnumbers oddnumberslist
  print_list filtered_oddnumbers_list
 
  0 (* Return value 0 indicates successful execution *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to filter odd numbers. *)
