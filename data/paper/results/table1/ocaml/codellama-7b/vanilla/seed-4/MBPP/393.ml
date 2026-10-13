let rec max_length_list (input_list : int list list) :  int * int list = 
    match input_list with
      head :: tail -> 
          (match tail with
              head2 :: tail2 -> 
                if List.length head >= List.length head2 then 
                  max_length_list (head :: tail2)
                else
                  max_length_list (head2 :: tail2)
          | [] -> (List.length head, head)
          )
  | [] -> (0, [])
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the list with maximum length. *)
