let rec find_Min_Length (lst : int list list) : int = 
  match lst with 
  | [] -> 0
  | hd :: tl -> 
      let rec min_len acc lst = 
        match lst with 
        | [] -> acc
        | h :: t -> min_len (min acc (List.length h)) t
      in
      let current_min = min_len infinity hd in
      find_Min_Length (tl @ [List.map (fun _ -> current_min) tl])

(* Example usage:
let test_list = [[1; 2; 3]; [4; 5]; [6; 7; 8; 9]] in
find_Min_Length test_list;;
(* Output: 2 *)
*)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the length of the smallest list in a list of lists. *)
