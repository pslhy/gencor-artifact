let rec extract_freq (test_list :  (int * int) list) : int =
  match test_list with
    | []  -> 0
    | (h1, h2) :: tl ->
                    if List.for_all (fun (i,j) -> (i != h1) || (j != h2)) tl
                    then 1 + extract_freq tl
                    else extract_freq tl


let print_result (test_list :  (int * int) list) : unit =
  let number_of_unique_tuples =
    extract_freq test_list in
  Printf.printf "%d" number_of_unique_tuples


let main () =
  let test_list = [(1, 2); (2, 3); (3, 4); (1, 2); (2, 3)] in
  print_result test_list

let () = main ()


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to extract the number of unique tuples in the given list. *)
