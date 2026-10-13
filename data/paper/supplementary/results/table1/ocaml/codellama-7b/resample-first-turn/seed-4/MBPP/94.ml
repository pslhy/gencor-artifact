let rec index_minimum (test_list :  (string * int) list) : string = 
    match test_list with
      head :: tail -> 
          (match tail with
              head2 :: tail2 -> 
                if snd head2 < snd head  then index_minimum tail
              else index_minimum tail2
          )
      [] -> 
        failwith "List is Empty" ; 
    


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a list of tuples, write a function that returns the first value of the tuple with the smallest second value. *)
