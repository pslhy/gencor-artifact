
let rec tuple_str_int (test_str : string) :  int * int * int = 
    let open Buffer in
    let int_str = String.map (fun (x) -> x - '0') test_str in
    let num_of_ints = List.length int_str in
    let ints = Array.init num_of_ints (fun i ->
        begin
           Int.of_float (float_of_int (string_of_int (List.nth int_str i)) /. 100.0)
      end)
    in
    (ints.(0), ints.(1), ints.(2))

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert tuple string to integer tuple. *)
