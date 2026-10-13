(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Given a list of tuples, write a function that returns the first value of the tuple with the smallest second value. *)
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
    

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:10: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec index_minimum (test_list :  (string * int) list) : string = 
    
    match test_list with
      head :: tail -> 
          (match tail with
              head2 :: tail2 -> 
                  if snd head2 < snd head then
                      index_minimum tail
                  else
                      index_minimum tail2
              )
      [] -> 
        failwith "List is Empty" 


(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:12:10: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec index_minimum (test_list :  (string * int) list) : string = 
    
    match test_list with
      head :: tail -> 
          (match tail with
              head2 :: tail2 -> 
                  if snd head2 < snd head then
                      index_minimum tail
                      )
                  else
                      index_minimum tail2


(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:19: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec index_minimum (test_list :  (string * int) list) : string = 
    
    match test_list with
      head :: tail -> 
          (match tail with
              head2 :: tail2 -> 
                  if snd head2 < snd head then
                      index_minimum tail
                  else
                      index_minimum tail2


(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:12:1: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec index_minimum (test_list :  (string * int) list) : string = 
    
    match test_list with
      head :: tail -> 
          (match tail with
              head2 :: tail2 -> 
                  if snd head2 < snd head then
                      index_minimum tail
                  else
                      index_minimum tail2


