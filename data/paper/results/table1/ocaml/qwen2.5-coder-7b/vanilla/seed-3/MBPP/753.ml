let rec min_k (test_list :  (string * int) list) (k : int) :  (string * int) list = 
    let rec sort = function
        | [] -> []
        | [h] -> [h]
        | x::y::t -> if x < y then x :: sort (y::t) else y :: sort (x::t) 
    in
    let rec min_rec acc k' lst = 
        match k', lst with
        | 0, _ -> List.rev acc
        | _, [] -> List.rev acc
        | _ , h::t -> min_rec (h :: acc) (k' - 1) t 
    in
    min_rec [] k (sort test_list)

let test_cases =
  [
    ( [("Python", 5); ("Java", 7); ("C#", 3); ("JavaScript", 4); ("Ruby", 6)], 3 );
    ( [("Apple", 50); ("Banana", 30); ("Cherry", 20); ("Date", 10); ("Elderberry", 40)], 2 );
    ( [("Physics", 80); ("Math", 90); ("History", 70); ("Chemistry", 60); ("Biology", 50)], 5 );
  ]
let () =
  List.iter (fun (input, expect) ->
    let rec print_list lst =
      match lst with
      | [] -> Printf.printf "\n"
      | h::t -> Printf.printf "%s " h; print_list t
    in
    Printf.printf "Input: ";
    print_list input;
    Printf.printf "Expected: ";
    print_list expect;
    Printf.printf "Output: ";
    print_list (min_k input expect);
  ) test_cases


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find minimum k records from tuple list. https://www.geeksforgeeks.org/mlthon-find-minimum-k-records-from-tuple-list/ - in this case a verbatim coml of test cases *)
