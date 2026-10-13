let rec add_lists (test_list : int list) (test_tup :  int * int) :  int * int * int * int * int =
    match test_list with
        | [] -> begin
          (test_tup, [])
        end
        | head :: tail -> begin
          match test_tup with
            | (tup1, tup2) -> begin
              let (tmp1, tmp2) = add_lists tail (tup1, tup2) in
              (tmp1, head :: tmp2)
            end
        end


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to append the given list to the given tuples. *)
