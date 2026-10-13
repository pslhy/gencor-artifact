let rec next_smallest (lst : int list) : int option =
  match lst with
  | [] -> None
  | [x] -> None
  | x :: y :: _ -> Some(y)

(* Test cases *)
let () =
  let test_next_smallest lst expected =
    print_string "next_smallest ";
    List.iter (fun x -> print_int x; print_string " ") lst;
    print_string " => ";
    begin match next_smallest lst with
    | Some(x) -> print_int x
    | None -> print_string "None"
    end;
    print_newline()
  in
  test_next_smallest [1; 2; 3; 4; 5] (Some(2));
  test_next_smallest [5; 1; 4; 3; 2] (Some(2));
  test_next_smallest [] (Some(None));
  test_next_smallest [1; 1] (Some(None));
  test_next_smallest [1; 2; 3; 4; 5; 1] (Some(2));
  test_next_smallest [1; 2; 3; 4; 1; 5] (Some(2));
  test_next_smallest [5; 4; 3; 2; 1] (Some(2));


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     You are given a list of integers. *)
(*     Write a function next_smallest() that returns the 2nd smallest element of the list. *)
(*     Return None if there is no such element. *)
(*     >>> next_smallest [1; 2; 3; 4; 5] *)
(*     Some(2) *)
(*     >>> next_smallest [5; 1; 4; 3; 2] *)
(*     Some(2) *)
(*     >>> next_smallest [] *)
(*     Some(None) *)
(*     >>> next_smallest [1; 1] *)
(*     Some(None) *)
