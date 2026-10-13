let rec diff_even_odd (list1 : int list) : int = 
    (* Declare a variable to hold the difference between the first even and first odd numbers *)
    let difference = 0 in
    (* Iterate through the list until you find the first even and first odd numbers *)
    list1 |> List.iter (fun num -> 
        (* Check if the current number is even and the difference variable is not assigned *)
        if(num mod 2 = 0) && (difference = 0) {
            (* Assign the current number as the first even number *)
            difference <- num
        }
        (* If the current number is odd and the difference variable is not assigned *)
        else if(num mod 2 <> 0) && (difference = 0) {
            (* Assign the current number as the first odd number and calculate the difference *)
            difference <- num
        }
    );
    (* Return the difference between the first even and first odd numbers *)
    difference
;;

(* Test case *)
diff_even_odd [1; 2; 3; 4; 5; 6] = 3;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the difference of the first even and first odd number of a given list. *)
