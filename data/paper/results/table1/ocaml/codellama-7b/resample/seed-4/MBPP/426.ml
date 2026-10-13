(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to filter odd numbers. *)
let rec filter_oddnumbers (nums : int list) : int list = 
    match nums with 
      head :: tail -> 
          (match head%2 with 
           0 -> head :: filter_oddnumbers tail
         _ -> filter_oddnumbers tail
       )
     | [] -> []

let rec print_list (l : int list) : unit = 
  match l with 
    head::tail -> (print_int head); print_string(" "); print_list tail 
  | [] -> print_string("\n")

let main (n : int) : unit = 
  let rec produce_oddnumbers (i : int) (nums : int list) : int list = 
    if i > n then nums else produce_oddnumbers (i+1) (i :: nums)
  let oddnumberslist = produce_oddnumbers 1 []
  let filtered_oddnumbers_list = filter_oddnumbers oddnumberslist
  print_list filtered_oddnumbers_list
 
  0 (* Return value 0 indicates successful execution *)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:10: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec filter_oddnumbers (nums : int list) : int list =
  match nums with
    | head :: tail ->
        if head % 2 = 0 then head :: filter_oddnumbers tail
        else filter_oddnumbers tail
    | [] -> []

let rec print_list (l : int list) : unit =
  match l with
    | head :: tail ->
        print_int head;
        print_string " ";
        print_list tail
    | [] -> print_string "\n"

let main (n : int) : unit =
  let rec produce_oddnumbers (i : int) (nums : int list) : int list =
    if i > n then nums else produce_oddnumbers (i + 1) (i :: nums)
  let oddnumberslist = produce_oddnumbers 1 []
  let filtered_oddnumbers_list = filter_oddnumbers oddnumberslist
  print_list filtered_oddnumbers_list
  0 (* Return value 0 indicates successful execution *)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:19:3: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec filter_oddnumbers (nums : int list) : int list =
 match nums with
 | head :: tail ->
   if head % 2 = 0 then head :: filter_oddnumbers tail
   else filter_oddnumbers tail
 | [] -> []

let rec print_list (l : int list) : unit =
 match l with
 | head :: tail ->
   print_int head;
   print_string " ";
   print_list tail
 | [] -> print_string "\n"

let main (n : int) : unit =
 match produce_oddnumbers n [] with
 | [] -> ()
 | oddnumberslist :: filtered_oddnumbers_list ->
   print_list oddnumberslist;
   print_string "\n";
   print_list filtered_oddnumbers_list;
   ()

let () = main 10

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:12: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec filter_oddnumbers (nums : int list) : int list =
  match nums with
  | head :: tail ->
    if head % 2 = 0 then head :: filter_oddnumbers tail
    else filter_oddnumbers tail
  | [] -> []

let rec print_list (l : int list) =
  match l with
  | head :: tail ->
    Printf.printf "%d " head;
    print_list tail
  | [] -> Printf.printf "\n"

let main (n : int) : unit =
  match produce_oddnumbers n [] with
  | [] -> ()
  | oddnumberslist :: filtered_oddnumbers_list ->
    print_list oddnumberslist;
    print_string "\n";
    print_list filtered_oddnumbers_list;
    ()

let () = main 10

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:13: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec filter_oddnumbers (nums : int list) : int list =
  match nums with
  | head :: tail ->
    if head % 2 = 0 then head :: filter_oddnumbers tail
    else filter_oddnumbers tail
  | [] -> []

let rec print_list (l : int list) =
  match l with
  | head :: tail ->
    Printf.printf "%d " head;
    print_list tail
  | [] -> Printf.printf "\n"

let main (n : int) : unit =
  match produce_oddnumbers n [] with
  | [] -> ()
  | oddnumberslist :: filtered_oddnumbers_list ->
    print_list oddnumberslist;
    print_string "\n";
    print_list filtered_oddnumbers_list;
    ()

let () = main 10

