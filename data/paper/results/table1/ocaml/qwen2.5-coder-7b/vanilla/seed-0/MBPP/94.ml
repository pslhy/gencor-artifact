let rec index_minimum (test_list :  (string * int) list) : string = 
  let min_val = ref ( Sys.max_int ) in
  let min_name = ref "" in
  List.iter (fun (name, value) -> 
      if value < !min_val then (
        min_val := value;
        min_name := name
      )
  ) test_list;
  !min_name


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a list of tuples, write a function that returns the first value of the tuple with the smallest second value. *)
