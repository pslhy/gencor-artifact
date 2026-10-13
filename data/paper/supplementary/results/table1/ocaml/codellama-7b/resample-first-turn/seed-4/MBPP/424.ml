let rec extract_rear (test_tuple :  string * string * string) : string list = 
    match test_tuple with
      head :: tail -> 
          (match tail with
              head2 :: tail2 -> 
                  (match tail2 with
                      head3 :: tail3 -> 
                         [head3])
                      | _ -> []
                  )
              | _ -> []
          )
     | _ -> []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to extract only the rear index element of each string in the given tuple. *)
