let rec new_tuple (test_list : string list) (test_str : string) :  string * string * string =
    match test_list with
        | [] -> ("", "", "")
        | x :: tl ->
              let main_str = "," ^ test_str ^ "," in
              if main_str = "," ^ x ^ "," then
                  (x, new_tuple tl test_str)
              else
                  new_tuple tl test_str


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to create a new tuple from the given string and list. *)
