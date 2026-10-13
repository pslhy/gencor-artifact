(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to extract all the adjacent coordinates of the given coordinate tuple. *)
let rec get_coordinates (test_tup :  int * int) : int list list =
    match tup with
    | (x, y) -> (x - 1, y - 1) :: (x, y - 1) :: (x + 1, y - 1) ::
   (x - 1, y) :: (x + 1, y) :: (x - 1, y + 1) :: (x, y + 1) :: (x + 1, y + 1) :: Es
(we incorrectly referred to the given list of tuples as a tuple in the previous line; it should be a list of tuples.)

let rec get_coordinates (test_list : (int * int) list) : int list list =
    match test_list with
    | [] -> []
    | tup :: rest -> let coordinates = get_coordinates tup in
        coordinates @ get_coordinates rest

let test_list = [(1, 2); (3, 4); (5, 6)]
let expected_result = [[0, 1]; [2, 3]; [4, 5]]
let actual_result = get_coordinates test_list

print_string "Expected: ";
print_string (string_of_int_list_list expected_result);
print_string " Actual: ";
print_string (string_of_int_list_list actual_result);

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:26: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_coordinates (test_tup :  int * int) : int list list =
    match tup with
    | (x, y) -> [x; y] :: get_coordinates ((x, y) :: [])

let test_list = [(1, 2); (3, 4); (5, 6)]

let print_coordinates coordinates =
    let print_coordinate (x, y) = Printf.printf "%d %d" x y in
    List.iter print_coordinate coordinates

let () = print_coordinates (get_coordinates test_list)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:11: Unbound value "tup" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_coordinates (test_tup :  int * int) : int list list =
    match test_tup with
    | (x, y) -> [x; y] :: get_coordinates ((x, y) :: [])

let test_list = [(1, 2); (3, 4); (5, 6)]

let print_coordinates coordinates =
    let print_coordinate (x, y) = Printf.printf "%d %d" x y in
    List.iter print_coordinate coordinates

let () = print_coordinates (get_coordinates test_list)

