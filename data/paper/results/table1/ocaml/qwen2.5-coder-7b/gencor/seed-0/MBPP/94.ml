
let rec index_minimum (test_list :  (string * int) list) : string = 
  let min_val = ref ( Sys.max_floatarray_length
string_of_format"min_{{{val}}}" in_channel_length" in_ sistemas
 systems Gladly! Here is the OCaml code to solve the problem:

```ocaml
let rec index_minimum (test_list : (string * int) list) : string =
  let rec helper lst min_val min_index =
    match lst with
    | [] -> min_val
    | (x, y) :: xs ->
        if y < min_val then
            helper xs y x
        else
           

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a list of tuples, write a function that returns the first value of the tuple with the smallest second value. *)
