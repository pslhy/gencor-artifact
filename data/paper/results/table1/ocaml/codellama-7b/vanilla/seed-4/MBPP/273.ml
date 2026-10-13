let rec substract_elements (test_tup1 :  int * int * int) (test_tup2 :  int * int * int) :  int * int * int = 
    match (test_tup1, test_tup2) with
    | ((x1, x2, x3), (y1, y2, y3)) -> 
        (x1 - y1, x2 - y2, x3 - y3) 
    | _ -> failwith "Not a square matrix"
 
let _ = 
    let test_tuple1 = (1, 3, -5) in 
    let test_tuple2 = (2, 5, 10) in 
    let test_tuple_ans = substract_elements test_tuple1 test_tuple2 in 
    print_string ("(" ^ (string_of_int test_tuple1) ^ ", " ^ (string_of_int test_tuple2) ^ ")-" ^ (string_of_int test_tuple_ans) ^ " = " ^ (string_of_int test_tuple1 - test_tuple2) ^ "\n")
     
let _ = 
    let test_tuple1 = (-1, 2, 8) in 
    let test_tuple2 = (3, 0, 4) in 
    let test_tuple_ans = substract_elements test_tuple1 test_tuple2 in 
    print_string ("(" ^ (string_of_int test_tuple1) ^ ", " ^ (string_of_int test_tuple2) ^ ")-" ^ (string_of_int test_tuple_ans) ^ " = " ^ (string_of_int test_tuple1 - test_tuple2) ^ "\n")


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in two tuples and subtracts the elements of the first tuple by the elements of the second tuple with the same index. *)
